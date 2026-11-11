.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
test eax, edi
bts si, 158
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
cmovp cx, bx
and dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
xor rdi, -9
cmovnbe esi, edi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
cmovo rsi, rdi
or dl, dl
cmovb rbx, rsi
xor dl, al
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 95
and al, -114
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
