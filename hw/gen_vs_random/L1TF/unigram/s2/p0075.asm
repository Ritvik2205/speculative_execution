.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 60
cmovnl eax, esi
setp cl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
mov bl, dil
jmp .bb_0.1
.bb_0.1:
sbb bl, bl
movzx di, sil
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
setnl dl
and rbx, 62
lea esi, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
add cl, -38 # instrumentation
setbe bl
movzx edx, ax
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
