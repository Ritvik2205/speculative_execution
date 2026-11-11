.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rax
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
cmp dl, bl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
add edi, -91
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 100
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
setnz cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test dx, cx
add rax, 6
add cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
