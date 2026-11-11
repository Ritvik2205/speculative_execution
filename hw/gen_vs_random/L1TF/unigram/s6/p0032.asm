.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and bx, bx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 19
movsx rbx, di
jmp .bb_0.1
.bb_0.1:
setnl bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
dec eax
xor ax, 22976
add al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
xor dl, al
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
