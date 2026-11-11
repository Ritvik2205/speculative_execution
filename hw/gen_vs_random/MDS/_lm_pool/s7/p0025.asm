.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and al, -103
xor dil, -124
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
btr ax, si
and dl, -73
xor al, -19
or sil, -49
or al, 16
test di, dx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test edi, -1252846009
or dil, dil
bt ax, dx
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
