.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
bts rdi, 15
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
cmovle rsi, rcx
or dl, -18
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovb ebx, edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
cmovnb bx, dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 36
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
cmovo edi, ecx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 65
and dl, sil
btr ecx, esi
or ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
