.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb esi, ebx
btr dx, 47
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and dl, 72 # instrumentation
cmovz edi, eax
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
or edx, ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
btr ebx, edi
xor bl, -61
not rbx
cmovl eax, edx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 48
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
or sil, -49
xor ecx, 8
bts rdx, 200
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
