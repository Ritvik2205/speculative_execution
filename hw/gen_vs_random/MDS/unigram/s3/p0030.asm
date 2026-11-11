.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 62
btr esi, eax
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
xor rcx, -2
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
cmovns eax, ebx
cmovl edi, esi
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xor sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
