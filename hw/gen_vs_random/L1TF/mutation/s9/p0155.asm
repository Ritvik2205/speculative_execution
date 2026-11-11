.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
add dl, 85 # instrumentation
cmovp bx, bx
sbb cl, cl
setbe cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
setb bl
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
or dl, -67
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and dl, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
