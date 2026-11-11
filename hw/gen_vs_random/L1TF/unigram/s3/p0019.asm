.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -34
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and al, bl
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
xor bl, al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 61
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 31
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdx
or dil, -113
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 98
cmp ax, dx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 69
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
cmp ax, -14781
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
