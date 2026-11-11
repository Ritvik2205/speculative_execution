.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
test dil, -51
and rax, -978188247
xor al, dl
btr ecx, edi
cmovnb rax, rdi
xor al, dl
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and dx, si
or rcx, -17
or al, 74
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
bt edx, eax
and esi, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
