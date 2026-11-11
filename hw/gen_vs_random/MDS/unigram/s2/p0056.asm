.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
btr ax, cx
cmovbe rdx, rdx
btc ecx, eax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
xor dl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
cmovnp di, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
cmovo rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and dl, 57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
test bl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
