.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
cmp rsi, 53
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
test di, 38
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
cmovnle rdi, rdx
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
lea esi, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
movsx ax, dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 55
or si, 0b1000000000000000 # instrumentation
bsf di, si
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
