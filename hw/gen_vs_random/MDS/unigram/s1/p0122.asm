.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovnle ebx, edi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
bts rdx, 255
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
cmovnb cx, di
xor al, cl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 82
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 92
xor sil, dil
or al, al
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 73
and bx, ax
bt edi, 254
bt ebx, edi
cmovnz ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
