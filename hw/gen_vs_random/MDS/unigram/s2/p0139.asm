.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
cmovnb rdx, rbx
test esi, 425331143
cmovns rbx, rsi
bts edx, edx
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and cl, 125 # instrumentation
cmovo bx, cx
and rsi, rax
or bl, sil
and dil, -62
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 38
and dl, -73
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 51
xor bl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
