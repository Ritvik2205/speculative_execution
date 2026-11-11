.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 5
btc rdi, rcx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
mov rbx, -813004896564518775
cmovnb di, dx
cmovnz ax, si
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
lea rbx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
mov edi, 2036069402
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -33
lea cx, qword ptr [rcx + rax + 18]
movsx edi, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
