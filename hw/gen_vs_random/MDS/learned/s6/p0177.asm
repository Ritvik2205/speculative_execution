.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
btr ecx, edi
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor dil, -5
and sil, cl
or edx, -78
bt ax, di
and dl, -73
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
test ecx, -1843375753
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
