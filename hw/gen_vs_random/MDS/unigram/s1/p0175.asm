.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 98
or rdx, -48
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rdx, 91
cmovnb rdx, rax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
or bl, 13
and bl, dl
or bl, al
cmovbe edi, esi
xor al, 34
and sil, -128 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
or bx, 69
cmovl eax, ecx
test bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
and al, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
xor bx, 62
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
