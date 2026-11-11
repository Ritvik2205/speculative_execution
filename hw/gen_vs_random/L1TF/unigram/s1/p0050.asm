.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmovo cx, bx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
lea rcx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
inc di
lea edi, qword ptr [rax + rbx + 6]
setnbe bl
or dil, -113
movzx rsi, al
jmp .bb_0.1
.bb_0.1:
and dil, 58
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
setnp al
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
