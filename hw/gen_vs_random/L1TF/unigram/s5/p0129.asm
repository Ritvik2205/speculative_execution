.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
and bl, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
xchg ebx, esi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
setb al
jmp .bb_0.1
.bb_0.1:
setl dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
cmovp si, cx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
add al, -6 # instrumentation
cmovnb ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
