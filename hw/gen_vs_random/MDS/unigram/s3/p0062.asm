.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
bts rdx, 255
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
or bl, 84
bt ecx, 71
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 96
cmovnb di, cx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 32
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
xor sil, 77
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
bt eax, 76
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 48
cmovp ecx, ecx
bts rdx, 255
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
