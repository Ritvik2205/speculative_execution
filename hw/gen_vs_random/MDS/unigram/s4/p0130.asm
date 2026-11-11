.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 47
cmovno rsi, rbx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 34
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
or dil, dil
test ecx, -1843375753
and bl, 38 # instrumentation
cmovno rax, rdi
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
or dl, al
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and dl, 125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 92
and dil, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
cmovbe dx, di
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and dl, 91 # instrumentation
cmovnle edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
