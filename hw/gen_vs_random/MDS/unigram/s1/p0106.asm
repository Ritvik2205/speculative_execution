.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
cmovnz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 82
test dl, -119
cmovno rcx, rdi
and rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
test ebx, -2015966884
cmovnle dx, ax
or bl, dl
and dl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
bt eax, ebx
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 36
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
