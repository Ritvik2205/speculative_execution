.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
or dl, -89
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
cmovb rsi, rbx
xor ax, -12492
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and dil, 125
test ecx, -1843375753
bts cx, di
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
or cx, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
