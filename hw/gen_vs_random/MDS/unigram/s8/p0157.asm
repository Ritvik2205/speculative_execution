.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
btr ecx, ecx
bts rbx, 25
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
or dl, dl
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
test al, dil
and dx, cx
and rdx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 58
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
cmovp ax, si
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
or dl, sil
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
