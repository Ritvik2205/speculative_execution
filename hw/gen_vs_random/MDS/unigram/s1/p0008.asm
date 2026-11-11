.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, cl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 34
btc rdx, 138
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 74
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and esi, 42
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
or al, dl
jmp .bb_0.1
.bb_0.1:
or si, 87
or rbx, -124
not di
cmovo rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
or bl, 84
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
bt esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
