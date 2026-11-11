.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor dl, dil
and cl, dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
or dl, 51
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
or ecx, eax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
cmovs edx, edi
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
xor dil, -124
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
btr edx, 197
xor dl, -43
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
