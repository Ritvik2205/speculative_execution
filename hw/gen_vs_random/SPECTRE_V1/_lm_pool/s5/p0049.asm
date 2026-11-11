.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edi, ebx
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, al
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
setnb bl
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
cmp al, 62
and al, 33
xor si, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
