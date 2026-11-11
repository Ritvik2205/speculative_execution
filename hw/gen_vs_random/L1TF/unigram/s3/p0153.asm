.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 81
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
movsx rsi, al
setp dl
xor bl, bl
movzx ecx, bl
jmp .bb_0.1
.bb_0.1:
cmp dx, 12
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 18
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
lea rax, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 90
cmp ecx, 54
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
