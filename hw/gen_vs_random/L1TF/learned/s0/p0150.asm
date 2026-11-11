.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
test eax, -2032743474
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
sbb rdi, 69
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
test al, -104
mov al, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
