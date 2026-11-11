.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
bt edi, 134
and bl, dl
setbe dl
cmovs ax, cx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno cx, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
sbb dl, al
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
mov al, bl
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
