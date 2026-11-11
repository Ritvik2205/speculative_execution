.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
setno sil
lea rcx, qword ptr [rdx]
lea cx, qword ptr [rsi + rdx]
sbb sil, 126
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
add bl, -42 # instrumentation
lea eax, qword ptr [rbx]
test bx, 30
add dl, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
bts rdx, 22
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 59
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 51
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
