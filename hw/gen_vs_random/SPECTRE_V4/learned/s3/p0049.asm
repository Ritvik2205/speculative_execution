.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
cmovns dx, di
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 10
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
or bl, bl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
movzx ax, cl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
add dl, dil
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
cmp rax, 1524061352
and dl, al
test bl, dl
sub al, 98
sbb cl, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
