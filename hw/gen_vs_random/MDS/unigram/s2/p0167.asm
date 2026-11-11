.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdx
cmovb rcx, rax
cmovs rdi, rbx
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and dl, al
test bl, bl
cmovb ecx, edi
jmp .bb_0.1
.bb_0.1:
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 15
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
cmovle eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
test cl, 78
xor bl, 2
test bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
