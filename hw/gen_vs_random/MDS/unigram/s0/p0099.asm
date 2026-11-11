.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
bt bx, 54
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor ecx, 9
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 8
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
or ecx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
test edi, 36
and dl, 122 # instrumentation
cmovnb rdx, rcx
cmovl edx, edx
xor ax, 24729
and bx, -21
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 88
btr di, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
