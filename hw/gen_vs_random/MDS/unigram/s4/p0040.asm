.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, si
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 55
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
bt edx, 94
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
or dl, dl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
or di, 10
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
test eax, ecx
btr esi, eax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
test eax, ecx
btc ebx, ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
btc dx, 146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
