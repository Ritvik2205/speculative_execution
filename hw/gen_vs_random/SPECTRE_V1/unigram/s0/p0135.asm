.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
lea bx, qword ptr [rax + rax + 41]
or al, cl
xor sil, -33
cmovnle rcx, rdi
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 40
sub bl, sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
adc esi, -66
movsx ax, cl
lea edx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
