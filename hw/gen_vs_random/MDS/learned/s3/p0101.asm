.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov al, 44
cmovp rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 28
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 3
xor edi, 74
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and bl, 23
or al, -48
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
