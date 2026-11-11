.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
add edx, 41
add bl, al
imul ebx, ebx, 119
not cl
sub cl, dl
sub al, al
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
add di, 44
btr rax, rsi
bts edx, 177
xchg dl, al
add dl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
