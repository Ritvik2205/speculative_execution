.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
movsx si, al
lea rbx, qword ptr [rsi + rbx + 73]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
btc edi, edi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
sub ax, 46
cmovnbe rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
sbb bl, 52
lea rbx, qword ptr [rbx + rax + 32]
bts eax, edx
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 32
and bl, al
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
