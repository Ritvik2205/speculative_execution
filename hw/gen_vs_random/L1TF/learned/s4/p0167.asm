.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
add di, 39
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 60
jmp .bb_0.1
.bb_0.1:
cmp esi, 110
xor sil, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
add bl, 68
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
test al, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
