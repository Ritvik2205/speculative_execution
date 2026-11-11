.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
dec si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 77
add bl, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
cmovno dx, dx
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovb ax, di
mov esi, edi
adc bl, 33
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 37
lea rsi, qword ptr [rax]
or ax, 31571
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
