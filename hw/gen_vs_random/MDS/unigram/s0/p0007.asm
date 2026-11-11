.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
bts eax, 222
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
bt ecx, eax
and bl, 15 # instrumentation
cmovb dx, si
and edx, -44
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
test sil, 17
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
bt cx, 22
cmovl ebx, esi
and dl, -72 # instrumentation
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
