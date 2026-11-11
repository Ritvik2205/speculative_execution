.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and bl, 68
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
xor dil, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
cmovp edi, ecx
or rbx, -72
and rdx, 2
and rcx, 107
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rsi
or eax, eax
cmovb esi, eax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rcx
btr ecx, 9
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
