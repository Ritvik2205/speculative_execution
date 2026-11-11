.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, 37
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
test bl, bl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
bt rax, rcx
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb bl, -88
and cx, bx
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
add bl, 107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 85
and al, -68
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sub sil, al
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
