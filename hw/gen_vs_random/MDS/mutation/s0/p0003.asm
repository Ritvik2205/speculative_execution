.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ecx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs rcx, rax
cmovnbe rbx, rax
and eax, -829294476
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
btr ecx, eax
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
cmovnb edx, eax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dl, 8 # instrumentation
cmovle ax, di
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
test bl, -114
or bl, dl
and eax, 454700988
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or rdx, rsi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
