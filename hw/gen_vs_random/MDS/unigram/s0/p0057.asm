.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
xor al, al
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
and dl, -1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
or rdi, 21
and bl, 107 # instrumentation
cmovbe si, di
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edx
not rcx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and ax, ax
xor sil, 110
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 34
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
btr di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
