.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edx, ecx
test rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 86
add cl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
setnbe dil
neg rcx
setb bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
sbb bl, -88
lea rbx, qword ptr [rdi]
xchg rcx, rax
cwde
add al, 80 # instrumentation
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
