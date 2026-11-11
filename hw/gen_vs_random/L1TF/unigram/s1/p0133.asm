.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
sub dil, -39
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
lea esi, qword ptr [rcx + rsi + 5]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
sbb rax, 62
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
sbb rbx, -117
add esi, edx
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
mov bl, dl
add al, -1 # instrumentation
nop
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
