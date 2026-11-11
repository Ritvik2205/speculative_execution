.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and cl, sil
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
xor eax, 984871847
xor sil, cl
xor bl, -27
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or bl, 43
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
or sil, bl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
