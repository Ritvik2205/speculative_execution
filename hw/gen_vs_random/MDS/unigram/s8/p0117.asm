.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or eax, 678817098
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
or dil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
cmovbe rcx, rcx
cmovnz rdi, rcx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 100
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or dl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
and dl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
xor rdi, -9
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 93
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
