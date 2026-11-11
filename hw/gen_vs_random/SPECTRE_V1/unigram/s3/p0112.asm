.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto sil
xor al, dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
or dl, 41
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 67
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and al, dil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
xor eax, esi
lea rbx, qword ptr [rdi + rbx + 66]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 63
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
