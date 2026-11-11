.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, ax
cmovns si, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
or ecx, 62
test al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
cmovo ax, dx
jmp .bb_0.1
.bb_0.1:
cmovbe edi, ebx
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
btr edx, 255
cmovs rdx, rax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
