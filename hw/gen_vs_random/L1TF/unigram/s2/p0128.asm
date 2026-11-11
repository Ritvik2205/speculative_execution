.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
btr edi, 1
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
mov edi, 2036069402
lea esi, qword ptr [rsi + rdx + 60]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test rcx, rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and ax, 37
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
add bl, -103 # instrumentation
cmovnz bx, si
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
