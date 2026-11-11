.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
xor dil, cl
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
neg rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
xchg dl, al
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
