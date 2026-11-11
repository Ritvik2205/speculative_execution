.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
cmovno di, ax
and ebx, ebx
bt bx, 12
btr rbx, rax
add dil, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
add edx, 27
add dl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
add eax, -371144449
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
