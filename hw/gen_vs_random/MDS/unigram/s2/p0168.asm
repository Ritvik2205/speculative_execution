.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
bts rax, 77
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
or di, si
xor si, 80
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and cl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test al, 127
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
cmovns ecx, ecx
test dil, 46
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
