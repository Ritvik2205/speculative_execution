.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -123 # instrumentation
cmovnp cx, bx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
cmovnp rdx, rax
and rdi, rdx
test ecx, -1843375753
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dil, sil
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test di, 39
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and al, 6 # instrumentation
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
or eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
