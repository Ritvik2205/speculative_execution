.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
neg rsi
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 90
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 89
test al, 70
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and di, bx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
cmovs dx, bx
xor eax, 1034314125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
