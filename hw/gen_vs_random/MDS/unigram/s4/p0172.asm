.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
bt di, 46
test sil, 61
xor rcx, 22
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
cmovl rbx, rcx
and cl, -2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
or dl, -115
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
bt rbx, rbx
and cl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
xor al, cl
or dil, -57
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
xor dl, dl
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
