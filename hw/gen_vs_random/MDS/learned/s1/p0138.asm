.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
or cl, 100
and cl, 127
or esi, 38
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
or dl, -115
cmovp ebx, edi
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
cmovs edi, edx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
cmovns eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
