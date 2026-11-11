.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 121 # instrumentation
setnb bl
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
cmp sil, -11
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
cmovl esi, ecx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 51
cmovno rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
and dl, al
sbb ecx, 37
not ecx
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
xchg edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
